from jinja2 import Environment, FileSystemLoader

from config import Config
from bin.generator.utils import TerraformFormatter


class TemplateEngine:

    def __init__(self, modules):

        self.modules = modules

        self.environment = Environment(
            loader=FileSystemLoader(Config.TEMPLATE_DIR),
            trim_blocks=True,
            lstrip_blocks=True
        )

        self.template = self.environment.get_template(
            "module.j2"
        )

    # ---------------------------------------------------------
    # Generate Terraform
    # ---------------------------------------------------------

    def generate(self, yaml_data):

        terraform = []

        for module_name, resources in yaml_data.items():

            for index, resource in enumerate(resources):

                values = {}

                for key, value in resource.items():

                    values[key] = TerraformFormatter.format(value)

                terraform.append(

                    self.template.render(

                        instance_name=f"{module_name}_{index + 1}",

                        module_name=module_name,

                        variables=values

                    )

                )

        return "\n\n".join(terraform)
