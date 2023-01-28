from abc import abstractmethod, ABC


class UserInterface(ABC):
    
    @abstractmethod
    def separation(self):
        pass

    @abstractmethod
    def show_user_info(self):
        pass