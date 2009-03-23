<%@ taglib prefix="g" uri="/web-app/WEB-INF/tld/grails.tld" %>
<div class="dialog">
  <table>
      <tbody>


          <tr class="prop">
              <td valign="top" class="name">
                  <label for="firstName">First Name:</label>
              </td>
              <td valign="top" class="value ${hasErrors(bean:contactInstance,field:'firstName','errors')}">
                  <input type="text" id="firstName" name="firstName" value="${fieldValue(bean:contactInstance,field:'firstName')}"/>
              </td>
          </tr>

          <tr class="prop">
              <td valign="top" class="name">
                  <label for="lastName">Last Name:</label>
              </td>
              <td valign="top" class="value ${hasErrors(bean:contactInstance,field:'lastName','errors')}">
                  <input type="text" id="lastName" name="lastName" value="${fieldValue(bean:contactInstance,field:'lastName')}"/>
              </td>
          </tr>

          <tr class="prop">
              <td valign="top" class="name">
                  <label for="company">Company:</label>
              </td>
              <td valign="top" class="value ${hasErrors(bean:contactInstance,field:'company','errors')}">
                  <input type="text" id="company" name="company" value="${fieldValue(bean:contactInstance,field:'company')}"/>
              </td>
          </tr>

          <tr class="prop">
              <td valign="top" class="name">
                  <label for="phone">Email:</label>
              </td>
              <td valign="top" class="value ${hasErrors(bean:contactInstance,field:'eMail','errors')}">
                  <input type="text" id="eMail" name="eMail" value="${fieldValue(bean:contactInstance,field:'eMail')}"/>
              </td>
          </tr>

          <tr class="prop">
              <td valign="top" class="name">
                  <label for="phone">Phone:</label>
              </td>
              <td valign="top" class="value ${hasErrors(bean:contactInstance,field:'phone','errors')}">
                  <input type="text" id="phone" name="phone" value="${fieldValue(bean:contactInstance,field:'phone')}"/>
              </td>
          </tr>

          <tr class="prop">
              <td valign="top" class="name">
                  <label for="mobilePhone">Mobile Phone:</label>
              </td>
              <td valign="top" class="value ${hasErrors(bean:contactInstance,field:'mobilePhone','errors')}">
                  <input type="text" id="mobilePhone" name="mobilePhone" value="${fieldValue(bean:contactInstance,field:'mobilePhone')}"/>
              </td>
          </tr>


          <tr class="prop">
              <td valign="top" class="name">
                  <label for="webSite">Web Site:</label>
              </td>
              <td valign="top" class="value ${hasErrors(bean:contactInstance,field:'webSite','errors')}">
                  <input type="text" id="webSite" name="webSite" value="${fieldValue(bean:contactInstance,field:'webSite')}"/>
              </td>
          </tr>

          <tr class="prop">
              <td valign="top" class="name">
                  <label for="xingPage">Xing Page:</label>
              </td>
              <td valign="top" class="value ${hasErrors(bean:contactInstance,field:'xingPage','errors')}">
                  <input type="text" id="xingPage" name="xingPage" value="${fieldValue(bean:contactInstance,field:'xingPage')}"/>
              </td>
          </tr>

          <tr class="prop">
              <td valign="top" class="name">
                  <label for="xingPage">Tags:</label>
              </td>
              <td valign="top" class="value ${hasErrors(bean:contactInstance,field:'tags','errors')}">
                  <%
                    // TODO: proper display of a comma-separated list of tags!

                    // if tasgString is set, use this, otherwise try to output tags.join!

                  %>
                  <input type="text" id="tagsString" name="tagsString" value="${contactInstance.tags.join(',')}"/>
              </td>
          </tr>

          <tr class="prop">
              <td valign="top" class="name">
                  <label for="note">Note:</label>
              </td>
              <td valign="top" class="value ${hasErrors(bean:contactInstance,field:'note','errors')}">
                  <textarea id="note" name="note" cols="80" rows="20">${fieldValue(bean:contactInstance,field:'note')}</textarea>
              </td>
          </tr>

      </tbody>
  </table>
</div>
