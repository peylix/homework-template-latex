# LaTeX Homework Template

A simple but elegant LaTeX template for writing your homework. Adapted from [this template](https://github.com/peylix/bdic-report-template-latex).

## Screenshots

<table>
  <tr>
    <td><img src="./screenshots/homework-1.jpg"/></td>
    <td><img src="./screenshots/homework-2.jpg"/></td>
  </tr>
</table>

## Suggestions

1. 在该项目的文件结构中，应该将跟文档内容相关的图片放在 `figures` 路径下，将用于装饰目的的图片放到 `images` 路径下。*(In the file structure of this project, pictures relevant to the main content of the document should be placed under `figures`, while pictures for decorative purposes should be put into `images`.)*

2. `main.tex` 文件包含文档的整体框架.建议将实际内容通过 `\input` 的方式导入，如 `\input{src/questions}`。 *(`main.tex` provides the overall framework for this document. It is recommended to import your actual content via `\input`, e.g. `\input{src/questions}`)*

3. 如果需要在 Overleaf 上编辑该文档，首先将该项目下载为 `.zip` 文件，然后在 Overleaf 上选择 **New Project > Upload Project**，再把 `.zip` 文件拖到弹出的窗口中即可。*(To edit the document on Overleaf, first download the project as a `.zip` file. Then, in Overleaf, select **New Project > Upload Project** and simply drag and drop the `.zip` file into the popup window.)*

4. 该文档的代码中提供了多种选项，可以被方便地启用或禁用。`.cls` 文件的代码十分简单且结构清晰，用户可以对其进行修改来贴合其具体需求。 *(There are plenty of options in the template code that are easy to enable or disable. The source code for the `.cls` file is simple and well-structured and you can easily customize the template to suit your needs.)*

