; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_get_hp_pin.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_get_hp_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_spec = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64*, i64* }

@AC_JACK_HP_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.alc_spec*)* @alc_get_hp_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alc_get_hp_pin(%struct.alc_spec* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.alc_spec*, align 8
  store %struct.alc_spec* %0, %struct.alc_spec** %3, align 8
  %4 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %5 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %14 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %2, align 8
  br label %37

20:                                               ; preds = %1
  %21 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %22 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AC_JACK_HP_OUT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %30 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %2, align 8
  br label %37

36:                                               ; preds = %20
  store i64 0, i64* %2, align 8
  br label %37

37:                                               ; preds = %36, %28, %12
  %38 = load i64, i64* %2, align 8
  ret i64 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
