; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/pok3r/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/pok3r/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_QWERTY = common dso_local global i32 0, align 4
@_COLEMAK = common dso_local global i32 0, align 4
@_DVORAK = common dso_local global i32 0, align 4
@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@KC_RSFT = common dso_local global i32 0, align 4
@_PLOVER = common dso_local global i32 0, align 4
@keymap_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@_FUNCTION = common dso_local global i32 0, align 4
@plover_gb_song = common dso_local global i32 0, align 4
@plover_song = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %139 [
    i32 129, label %7
    i32 135, label %17
    i32 134, label %27
    i32 131, label %37
    i32 128, label %58
    i32 136, label %79
    i32 130, label %92
    i32 133, label %116
    i32 132, label %126
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @_QWERTY, align 4
  %15 = call i32 @set_single_persistent_default_layer(i32 %14)
  br label %16

16:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %140

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @_COLEMAK, align 4
  %25 = call i32 @set_single_persistent_default_layer(i32 %24)
  br label %26

26:                                               ; preds = %23, %17
  store i32 0, i32* %3, align 4
  br label %140

27:                                               ; preds = %2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @_DVORAK, align 4
  %35 = call i32 @set_single_persistent_default_layer(i32 %34)
  br label %36

36:                                               ; preds = %33, %27
  store i32 0, i32* %3, align 4
  br label %140

37:                                               ; preds = %2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i32, i32* @_LOWER, align 4
  %45 = call i32 @layer_on(i32 %44)
  %46 = load i32, i32* @_LOWER, align 4
  %47 = load i32, i32* @_RAISE, align 4
  %48 = load i32, i32* @_ADJUST, align 4
  %49 = call i32 @update_tri_layer(i32 %46, i32 %47, i32 %48)
  br label %57

50:                                               ; preds = %37
  %51 = load i32, i32* @_LOWER, align 4
  %52 = call i32 @layer_off(i32 %51)
  %53 = load i32, i32* @_LOWER, align 4
  %54 = load i32, i32* @_RAISE, align 4
  %55 = load i32, i32* @_ADJUST, align 4
  %56 = call i32 @update_tri_layer(i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %43
  store i32 0, i32* %3, align 4
  br label %140

58:                                               ; preds = %2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* @_RAISE, align 4
  %66 = call i32 @layer_on(i32 %65)
  %67 = load i32, i32* @_LOWER, align 4
  %68 = load i32, i32* @_RAISE, align 4
  %69 = load i32, i32* @_ADJUST, align 4
  %70 = call i32 @update_tri_layer(i32 %67, i32 %68, i32 %69)
  br label %78

71:                                               ; preds = %58
  %72 = load i32, i32* @_RAISE, align 4
  %73 = call i32 @layer_off(i32 %72)
  %74 = load i32, i32* @_LOWER, align 4
  %75 = load i32, i32* @_RAISE, align 4
  %76 = load i32, i32* @_ADJUST, align 4
  %77 = call i32 @update_tri_layer(i32 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %71, %64
  store i32 0, i32* %3, align 4
  br label %140

79:                                               ; preds = %2
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @KC_RSFT, align 4
  %87 = call i32 @register_code(i32 %86)
  br label %91

88:                                               ; preds = %79
  %89 = load i32, i32* @KC_RSFT, align 4
  %90 = call i32 @unregister_code(i32 %89)
  br label %91

91:                                               ; preds = %88, %85
  store i32 0, i32* %3, align 4
  br label %140

92:                                               ; preds = %2
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %92
  %99 = load i32, i32* @_RAISE, align 4
  %100 = call i32 @layer_off(i32 %99)
  %101 = load i32, i32* @_LOWER, align 4
  %102 = call i32 @layer_off(i32 %101)
  %103 = load i32, i32* @_ADJUST, align 4
  %104 = call i32 @layer_off(i32 %103)
  %105 = load i32, i32* @_PLOVER, align 4
  %106 = call i32 @layer_on(i32 %105)
  %107 = call i32 (...) @eeconfig_is_enabled()
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %98
  %110 = call i32 (...) @eeconfig_init()
  br label %111

111:                                              ; preds = %109, %98
  %112 = call i32 (...) @eeconfig_read_keymap()
  store i32 %112, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 0), align 4
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @keymap_config, i32 0, i32 1), align 4
  %114 = call i32 @eeconfig_update_keymap(i32 %113)
  br label %115

115:                                              ; preds = %111, %92
  store i32 0, i32* %3, align 4
  br label %140

116:                                              ; preds = %2
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load i32, i32* @_PLOVER, align 4
  %124 = call i32 @layer_off(i32 %123)
  br label %125

125:                                              ; preds = %122, %116
  store i32 0, i32* %3, align 4
  br label %140

126:                                              ; preds = %2
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i32, i32* @_FUNCTION, align 4
  %134 = call i32 @layer_on(i32 %133)
  br label %138

135:                                              ; preds = %126
  %136 = load i32, i32* @_FUNCTION, align 4
  %137 = call i32 @layer_off(i32 %136)
  br label %138

138:                                              ; preds = %135, %132
  store i32 0, i32* %3, align 4
  br label %140

139:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %140

140:                                              ; preds = %139, %138, %125, %115, %91, %78, %57, %36, %26, %16
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @set_single_persistent_default_layer(i32) #1

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @register_code(i32) #1

declare dso_local i32 @unregister_code(i32) #1

declare dso_local i32 @eeconfig_is_enabled(...) #1

declare dso_local i32 @eeconfig_init(...) #1

declare dso_local i32 @eeconfig_read_keymap(...) #1

declare dso_local i32 @eeconfig_update_keymap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
