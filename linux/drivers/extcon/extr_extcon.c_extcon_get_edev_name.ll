; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_extcon_get_edev_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_extcon_get_edev_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extcon_dev = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @extcon_get_edev_name(%struct.extcon_dev* %0) #0 {
  %2 = alloca %struct.extcon_dev*, align 8
  store %struct.extcon_dev* %0, %struct.extcon_dev** %2, align 8
  %3 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %4 = icmp ne %struct.extcon_dev* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %10

6:                                                ; preds = %1
  %7 = load %struct.extcon_dev*, %struct.extcon_dev** %2, align 8
  %8 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  br label %10

10:                                               ; preds = %6, %5
  %11 = phi i8* [ null, %5 ], [ %9, %6 ]
  ret i8* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
