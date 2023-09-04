"""Second Migration

Revision ID: dd55ff1cef28
Revises: b6641b37bc85
Create Date: 2023-09-04 21:01:33.654487

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'dd55ff1cef28'
down_revision = 'b6641b37bc85'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('favorites', schema=None) as batch_op:
        batch_op.create_foreign_key(None, 'users', ['user_id'], ['id'])
        batch_op.create_foreign_key(None, 'movies', ['movie_id'], ['id'])

    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('favorites', schema=None) as batch_op:
        batch_op.drop_constraint(None, type_='foreignkey')
        batch_op.drop_constraint(None, type_='foreignkey')

    # ### end Alembic commands ###
