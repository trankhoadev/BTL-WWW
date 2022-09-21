package com.example.dhktpm15a_nhom18_loc_quanliduan;

import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;

public class MainScreen extends AppCompatActivity {
    private final static String TAG = "Xem dự án";
    Toolbar toolbar;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main_screen);

        getSupportActionBar().hide();
        toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);


//        List<MainMenuItem> menuItems = new LinkedList<>();
//        menuItems.add(new MainMenuItem(R.drawable.logo, R.string.managementTitle,
//                R.string.managementDesc));
//
//        final ListView buttonList = (ListView) findViewById(R.id.list);
//        final MenuAdapter buttonListAdapter = new MenuAdapter(this, menuItems);
//        buttonList.setAdapter(buttonListAdapter);
//        buttonList.setOnItemClickListener(new AdapterView.OnItemClickListener()
//        {
//            @Override
//            public void onItemClick(AdapterView<?> parent, View view, int position, long id)
//            {
//                MainMenuItem item = (MainMenuItem)parent.getItemAtPosition(position);
//                if(item == null)
//                {
//                    Log.w(TAG, "Mục nằm ở vị trí " + position + " rỗng !");
//                    return;
//                }
//
//                Class goalClass = null;
//
//                switch(item.menuTextId)
//                {
//                    case R.string.managementTitle:
//                        goalClass = BudgetActivity.class;
//                        break;
//                    default:
//                        Log.w(TAG, "Id không hợp lệ: " + item.menuTextId);
//                        break;
//                }
//
//                if(goalClass != null)
//                {
//                    Intent i = new Intent(getApplicationContext(), goalClass);
//                    startActivity(i);
//                }
//            }
//        });
//
//        SharedPreferences prefs = getSharedPreferences("protect.projectmanagement", MODE_PRIVATE);
//        if (prefs.getBoolean("firstrun", true)) {
//            prefs.edit().putBoolean("firstrun", false).commit();
//        }
    }

//    static class MainMenuItem
//    {
//        public final int iconId;
//        public final int menuTextId;
//        public final int menuDescId;
//
//        public MainMenuItem(int iconId, int menuTextId, int menuDescId)
//        {
//            this.iconId = iconId;
//            this.menuTextId = menuTextId;
//            this.menuDescId = menuDescId;
//        }
//    }
//
//    static class MenuAdapter extends ArrayAdapter<MainMenuItem>
//    {
//        public MenuAdapter(Context context, List<MainMenuItem> items)
//        {
//            super(context, 0, items);
//        }
//
//        @Override
//        public View getView(int position, View convertView, ViewGroup parent)
//        {
//            // Get the data item for this position
//            MainMenuItem item = getItem(position);
//
//            // Check if an existing view is being reused, otherwise inflate the view
//
//            if (convertView == null)
//            {
//                convertView = LayoutInflater.from(getContext()).inflate(R.layout.main_button,
//                        parent, false);
//            }
//
//            TextView menuText = (TextView) convertView.findViewById(R.id.menu);
//            TextView menuDescText = (TextView) convertView.findViewById(R.id.menudesc);
//            ImageView icon = (ImageView) convertView.findViewById(R.id.image);
//
//            menuText.setText(item.menuTextId);
//            menuDescText.setText(item.menuDescId);
//            icon.setImageResource(item.iconId);
//
//            return convertView;
//        }
//    }

}