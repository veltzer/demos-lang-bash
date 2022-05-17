<%!
    import config.project
    import config.python
    import user.personal
    import glob
    import yaml
%>
# *${config.project.project_name}* project by ${user.personal.personal_fullname}

<%
	action_files = glob.glob('.github/workflows/*.yml')
	for action_file in action_files:
		with open(action_file, 'r') as stream:
			action_name=yaml.safe_load(stream)["name"]
			context.write(f"![{action_name}](https://github.com/{config.project.project_github_username}/{config.project.project_name}/workflows/{action_name}/badge.svg)\n")
%>

${config.project.project_description_short}

project website: ${config.project.project_website}

chat with me at [![gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/veltzer/mark.veltzer)

<%include file="../snipplets/main.md.mako" />
	${user.personal.personal_origin}, ${config.project.project_copyright_years_short}
