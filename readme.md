# Web Component for standardized error messages

Simple web component to display standardized error messages accross apps - intended for SPA or the gateway displays.

The module is minimalistic with asset being encoded to minimize extra traffic in case of errors.

## Usage

```html
<error-page status-code="404" path="/secret" >
      <a slot="home" href="/">Navigate to the landing page</a>
      <div> Error seen if module load failed</div>
</error-page>
```
