import FontAwesome from 'react-native-vector-icons/FontAwesome5';
import Feather from 'react-native-vector-icons/Feather';
import MaterialCommunityIcons from 'react-native-vector-icons/MaterialCommunityIcons';

import {StyleProp, TextStyle} from 'react-native';

type TVector =
  | 'feather'
  | 'fontawesome'
  | 'ionicons'
  | 'materialCI'
  | 'material';

interface IProps {
  size?: number;
  style?: StyleProp<TextStyle>;
  name?: any;
  color?: string;
  as?: TVector;
  onPress?: () => void;
}

const Vector = ({
  size,
  style,
  name,
  color,
  as,
  onPress,
}: IProps): JSX.Element => {
  const props = {
    name,
    size,
    style,
    color,
    onPress,
  };

  if (as === 'feather') {
    return <Feather name={name || ''} color={color || ''} size={size || 32} />;
  }

  if (as === 'materialCI' || as === 'material') {
    return (
      <MaterialCommunityIcons
        name={(name as any) || ''}
        size={size || 32}
        color={color || ''}
        onPress={onPress}
      />
    );
  }
  return (
    <FontAwesome name={name || ''} color={color || ''} size={size || 32} />
  );
};

export default Vector;
