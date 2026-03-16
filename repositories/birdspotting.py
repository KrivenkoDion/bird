from sqlmodel import Session, select
from models.birdspotting import BirdSpotting, BirdSpottingCreate


class BirdSpottingRepository:
    def __init__(self, session: Session):
        self.session = session

    def get_all(self):
        statement = select(BirdSpotting)
        items = self.session.exec(statement).all()
        return items

    def get_one(self, id: int):
        statement = select(BirdSpotting).where(BirdSpotting.id == id)
        item = self.session.exec(statement).first()
        return item

    def insert(self, payload: BirdSpottingCreate):
        item = BirdSpotting.model_validate(payload)
        self.session.add(item)
        self.session.commit()
        self.session.refresh(item)
        return item