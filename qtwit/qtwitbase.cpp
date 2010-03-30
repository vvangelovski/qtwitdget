/* Copyright (c) 2009, Antonie Jovanoski
 *	
 * All rights reserved.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * Contact e-mail: Antonie Jovanoski <minimoog77_at_gmail.com>
 */

#include "qtwitbase.h"

/*!
    Constructor
 */
QTwitBase::QTwitBase(QObject *parent)
	:	QObject(parent), m_netManager(0), m_oauthTwitter(0)	
{
}

/*!
    Constructor
    \param netManager Network Access Manager
    \param oauthTwitter OAuth Twitter
    \param parent QObject parent
 */
QTwitBase::QTwitBase(QNetworkAccessManager* netManager, OAuthTwitter* oauthTwitter, QObject *parent)
:	QObject(parent), m_netManager(netManager), m_oauthTwitter(oauthTwitter)
{
}

/*!
    Sets network access manager
    \param netManager Network access manager
 */
void QTwitBase::setNetworkAccessManager(QNetworkAccessManager* netManager)
{
	m_netManager = netManager;
}

/*!
    Gets network access manager
    \return Network access manager
 */
QNetworkAccessManager* QTwitBase::networkAccessManager() const
{
	return m_netManager;
}

/*!
    Sets OAuth Twitter authorization
    \param oauthTwitter OAuth Twitter
 */
void QTwitBase::setOAuthTwitter(OAuthTwitter* oauthTwitter)
{
	m_oauthTwitter = oauthTwitter;
}

/*!
    Gets OAuth Twitter authorization
    \return OAuth Twitter
 */
OAuthTwitter* QTwitBase::oauthTwitter() const
{
	return m_oauthTwitter;
}
