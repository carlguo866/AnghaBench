; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_class.c_class_remove_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_class.c_class_remove_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.class_attribute = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @class_remove_file(%struct.class* %0, %struct.class_attribute* %1) #0 {
  %3 = alloca %struct.class*, align 8
  %4 = alloca %struct.class_attribute*, align 8
  store %struct.class* %0, %struct.class** %3, align 8
  store %struct.class_attribute* %1, %struct.class_attribute** %4, align 8
  %5 = load %struct.class*, %struct.class** %3, align 8
  %6 = icmp ne %struct.class* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load %struct.class*, %struct.class** %3, align 8
  %9 = getelementptr inbounds %struct.class, %struct.class* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.class_attribute*, %struct.class_attribute** %4, align 8
  %14 = getelementptr inbounds %struct.class_attribute, %struct.class_attribute* %13, i32 0, i32 0
  %15 = call i32 @sysfs_remove_file(i32* %12, i32* %14)
  br label %16

16:                                               ; preds = %7, %2
  ret void
}

declare dso_local i32 @sysfs_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
