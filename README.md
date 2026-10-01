# HDI_ConvertFormToDynamicForm

![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue)
![4D](https://img.shields.io/static/v1?label=4D&message=21%2B&color=brightgreen)

A "How do I" (HDI) example that shows how to **convert a classic form into a dynamic form** with `FORM Convert to dynamic`, store it as JSON, and display or modify it at runtime in a subform.

Originally a 4D v17 R3 binary database, it has been converted to a 4D project and modernised for 4D 21.

## Origin

- **Blog post:** [Convert classic 4D forms to dynamic forms](https://blog.4d.com/convert-classic-4d-forms-to-dynamic-forms/)
- **Original download:** [HDI_ConvertFormToDynamicForm.zip](https://download.4d.com/Demos/4D_v17_R3/HDI_ConvertFormToDynamicForm.zip)

## Requirements

- 4D 21 or later (project `compatibilityVersion` 2101)
- macOS or Windows
- No extra licence is needed

## How to run

1. Open `Project/HDI_ConvertFormToDynamicForm.4DProject` with 4D.
2. The splash window opens on startup. Choose **File > Demo...** to reopen it later.
3. Click **Demo**. The window has three tabs: description, the conversion demo, and the editing demo.

## Features

| Tab | What it shows |
|-----|---------------|
| Conversion | The `Contact` form side by side: the classic form stored in the project and the converted dynamic form read back from `ContactForm.json`. The **Convert** button runs `convertForm`. |
| Editing | The dynamic form is a plain object (`oDynForm`) that is edited in code: **Change size** (font size and height), **Invert Photo/Text** (object positions) and **Save** (writes the JSON back to disk). |

## Points of interest

- `FORM Convert to dynamic` turns a form into an object; `JSON Stringify` and `TEXT TO DOCUMENT` store it next to the data file (`convertForm`).
- `OBJECT SET SUBFORM` assigns the object to a subform, so edits to `oDynForm.pages[1].objects` are displayed immediately.
- The standard HDI splash (`HDI` form) checks the minimum 4D version and the required licence, and links to the blog.
- The sample texts come from a `Samples` table whose records are imported from `Resources/Samples.4ie` on first run.

## Modernisation notes

This project follows the conventions shared by all HDI repositories:

- **Startup:** `00_Start` uses `#DECLARE`, `CALL WORKER`, a non-blocking `DIALOG(...; *)` with a plain window, and reuses an existing splash window instead of opening a duplicate.
- **Localisation:** UI strings use `:xliff:` references and `Localized string`. XLIFF files for English and Japanese are in `Resources/en.lproj` and `Resources/ja.lproj`, one set per purpose (menu, messages, each form).
- **Declarations:** `var` and `#DECLARE` replace the deprecated `C_*` commands.
- **Menus:** the Quit item uses the standard `quit` action instead of a wrapper method.
- **Method visibility:** subroutines (`initHDI`, `convertForm`) are hidden from the Run Method dialog.
- **Dark mode:** `Project/Sources/styleSheets.css` defines light and dark colours. Form objects use `automatic` colours or CSS classes.
- **Liquid Glass:** `styleSheets_mac.css` sets button height to 27px (Liquid Glass) or 23px (classic macOS); all buttons use the `default` class and no fixed height.
- **Listboxes:** none in this project, so no truncation or resizing settings were required.

## Project layout

```
Project/Sources/
  Methods/            00_Start (startup), convertForm, initHDI
  Forms/HDI           splash form
  Forms/HDI2          demo form
  Forms/Contact       form that is converted
  TableForms/1        input and output forms of the Samples table
  styleSheets*.css    theme and platform styles
Resources/            images, sample data and XLIFF files
```

## License

See [LICENSE](LICENSE).
