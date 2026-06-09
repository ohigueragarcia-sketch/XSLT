<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="utf-8" indent="yes" />

  <xsl:template match="/">
    <html lang="es">
      <head>
        <meta charset="utf-8" />
        <title>Bibliotecas de Andalucía</title>
        <link rel="stylesheet" type="text/css" href="estilo.css" />
      </head>
      <body>

        <div id="top"></div>

        <div class="header-image">
          Bibliotecas de Andalucía
        </div>

        <nav>
          <button class="menu-toggle">☰</button>
          <ul id="menu">
            <li class="menu_prov">
              <a class="enlace" href="#Sevilla">Sevilla</a>
            </li>
            <li class="menu_prov">
              <a class="enlace" href="#Málaga">Málaga</a>
            </li>
            <li class="menu_prov">
              <a class="enlace" href="#Granada">Granada</a>
            </li>
            <li class="menu_prov">
              <a class="enlace" href="#Córdoba">Córdoba</a>
            </li>
            <li class="menu_prov">
              <a class="enlace" href="#Cádiz">Cádiz</a>
            </li>
            <li class="menu_prov">
              <a class="enlace" href="#Jaén">Jaén</a>
            </li>
            <li class="menu_prov">
              <a class="enlace" href="#Huelva">Huelva</a>
            </li>
            <li class="menu_prov">
              <a class="enlace" href="#Almería">Almería</a>
            </li>
          </ul>
        </nav>

        <div class="container">
          <xsl:for-each select="bibliotecas/biblioteca">
            <div class="biblioteca-card">
              <xsl:if test="not(preceding-sibling::biblioteca[municipio = current()/municipio])">
                <xsl:attribute name="id">
                  <xsl:value-of select="municipio" />
                </xsl:attribute>
              </xsl:if>

              <div class="nombre-biblioteca">
                <xsl:value-of select="nombre" />
              </div>

              <div class="imagen-biblioteca"> [Imagen de <xsl:value-of select="municipio" />] </div>

              <div class="seccion-info">
                <ul>
                  <li>
                    <strong>- Horario de la biblioteca:</strong>
                  </li>
                  <li style="padding-left: 15px; margin-bottom: 5px;">
                    <xsl:value-of select="horario" />
                  </li>
                  <li><strong>- Dirección:</strong><xsl:value-of select="direccion" />, <xsl:value-of
                      select="municipio" /> (<xsl:value-of select="cp" />)</li>
                  <li>
                    <strong>- Provincia:</strong>
                    <xsl:value-of select="provincia" />
                  </li>
                  <li>
                    <strong>- Teléfono:</strong>
                    <xsl:value-of select="telefono" />
                  </li>
                  <li>
                    <strong>- Correo electrónico:</strong>
                    <xsl:value-of select="email" />
                  </li>
                  <li>
                    <strong>- Tipo de centro:</strong>
                    <xsl:value-of select="tipo" />
                  </li>
                </ul>
              </div>

              <div class="social-icons">
                <a class="social-icon" href="{web}" target="_blank" title="Visitar Web">🌐</a>
                <a class="social-icon" href="mailto:{email}" title="Enviar Correo">✉</a>
              </div>
            </div>
          </xsl:for-each>
        </div>

        <div id="bottom-anchor"></div>

        <div class="scroll-buttons">
          <a href="#top" class="scroll-btn" title="Subir arriba">▲</a>
          <a href="#bottom-anchor" class="scroll-btn" title="Bajar abajo">▼</a>
        </div>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>