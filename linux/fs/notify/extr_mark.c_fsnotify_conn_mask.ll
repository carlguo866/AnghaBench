; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_conn_mask.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_conn_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark_connector = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsnotify_conn_mask(%struct.fsnotify_mark_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsnotify_mark_connector*, align 8
  store %struct.fsnotify_mark_connector* %0, %struct.fsnotify_mark_connector** %3, align 8
  %4 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  %5 = getelementptr inbounds %struct.fsnotify_mark_connector, %struct.fsnotify_mark_connector* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @fsnotify_valid_obj_type(i32 %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.fsnotify_mark_connector*, %struct.fsnotify_mark_connector** %3, align 8
  %16 = call i32* @fsnotify_conn_mask_p(%struct.fsnotify_mark_connector* %15)
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @fsnotify_valid_obj_type(i32) #1

declare dso_local i32* @fsnotify_conn_mask_p(%struct.fsnotify_mark_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
