from typing import List, Annotated
from fastapi import APIRouter, Depends
from sqlmodel import Session

from database import get_session
from models.birdspotting import BirdSpotting, BirdSpottingCreate
from repositories.birdspotting import BirdSpottingRepository

router = APIRouter(prefix="/birdspotting", tags=["BirdSpotting"])


def get_repository(
    session: Annotated[Session, Depends(get_session)],
) -> BirdSpottingRepository:
    return BirdSpottingRepository(session)


@router.get("/", response_model=List[BirdSpotting])
async def get_all(repo: Annotated[BirdSpottingRepository, Depends(get_repository)]):
    return repo.get_all()


@router.get("/{id}", response_model=BirdSpotting)
async def get_one(
    id: int,
    repo: Annotated[BirdSpottingRepository, Depends(get_repository)],
):
    return repo.get_one(id)


@router.post("/", response_model=BirdSpotting)
async def add(
    spotting: BirdSpottingCreate,
    repo: Annotated[BirdSpottingRepository, Depends(get_repository)],
):
    return repo.insert(spotting)