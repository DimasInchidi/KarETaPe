/* 
 * Copyright (C) 2015 kid5234 aka PSH Namja  @ LMT Hackathon Merdeka
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */


function popitupsmall(url) {
    newwindow = window.open(url, 'Data Pencarian', "width=700,height=700,screenX=300,screenY=75,scrollbars=yes ");
    if (window.focus) {
        newwindow.focus()
    }
    return false;
}
function popitupfull(url) {
    newwindow = window.open(url, 'Data Pencarian', "type=fullWindow,fullscreen,scrollbars:yes ");
    if (window.focus) {
        newwindow.focus()
    }
    return false;
}


