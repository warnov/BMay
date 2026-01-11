# BMay (VB6) — Decimal to “Mayan” Number Converter (Legacy Project)

## What this is

**BMay** is a small **Visual Basic 6 (VB6)** desktop program I built **over 20 years ago** as a personal project for an **Astronomy elective** at the very beginning of my **Systems Engineering** studies at **Universidad Nacional de Colombia**.

I recently found the source code again, and I’m publishing it as a **personal relic** — a snapshot of how I used to think and build software back then.

The main VB6 form (UI logic, translation routine, and image handling) lives in [files/Main.frm](files/Main.frm) if you want to inspect or tinker with the original code.

## What it does

BMay takes a **base-10 (decimal) integer** as input and converts it to **base 20**, then displays each resulting digit using **bitmap symbols (0–19)** to represent a “Mayan-style” rendering.

Beyond being a programming exercise, this little tool is a small tribute to Maya mathematics, which was strikingly sophisticated for its time. The Maya worked with a vigesimal (base-20) positional system, representing quantities with simple visual building blocks (traditionally dots and bars) and even using a true zero symbol—an idea that many civilizations adopted much later. That positional approach made it practical to write and reason about very large numbers.

This mathematical foundation connects naturally to astronomy: Maya priest-astronomers recorded and compared repeating celestial cycles and used rigorous counting to keep long-running calendar systems, track lunar patterns, and model visible planetary rhythms (famously Venus). In the same spirit, BMay takes a familiar base-10 number and re-expresses it in base-20, then displays each base-20 digit using bitmap symbols (0–19). It’s a simple visual bridge between modern decimal notation and the counting logic behind how the Maya structured and communicated numbers in an astronomy-driven culture.

In other words:

- Input: a decimal number (base 10)
- Output: its representation in base 20
- Display: each base-20 digit is shown as an image (BMP)

> Note: the program represents digits visually via image assets; it does not generate glyphs procedurally.

## Historical value (and why the code looks the way it does)

This code is provided **as-is**, mainly for **historical and personal value**.

It carries plenty of “flags” typical of early-stage development work: hardcoded paths, minimal validation patterns, limited scalability, and UI decisions that reflect my inexperience at the time. None of that is hidden or polished — that’s part of the point of keeping this artifact intact.

That said, the logic is straightforward and can be:

- cleaned up,
- made more robust,
- and ported to a modern platform (e.g., .NET, Python, JavaScript, etc.)
  if someone ever wants to modernize it.

## Program name

The application name is **BMay**.

## Running the executable (Windows 11 and earlier)

The compiled executable can still run today (including **Windows 11**) as long as it is executed from the exact folder structure below, because the program expects local dependencies and asset locations.

Use this layout:

```
D:\BMay\
  BMay.exe
  MSVBVM50.DLL
  files\
    0.bmp
    1.bmp
    2.bmp
    ...
    19.bmp
```

### Requirements

- `BMay.exe` must be run from: **`D:\BMay\`**
- `MSVBVM50.DLL` must be present in the **root folder** (`D:\BMay\`)
- All bitmap digit images must be inside: **`D:\BMay\files\`**

## Notes

- The UI only shows a limited number of base-20 digits (based on the fixed set of image placeholders in the VB6 form).
- Error handling is minimal and tailored to the original classroom scope.

---

If you’re reading this: welcome to a very early chapter of my engineering journey.