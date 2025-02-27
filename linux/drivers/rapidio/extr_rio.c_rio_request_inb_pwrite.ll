; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_request_inb_pwrite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_request_inb_pwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_dev = type { i32 (%struct.rio_dev*, %union.rio_pw_msg*, i32)* }
%union.rio_pw_msg = type opaque
%union.rio_pw_msg.0 = type opaque

@rio_global_list_lock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rio_request_inb_pwrite(%struct.rio_dev* %0, i32 (%struct.rio_dev*, %union.rio_pw_msg.0*, i32)* %1) #0 {
  %3 = alloca %struct.rio_dev*, align 8
  %4 = alloca i32 (%struct.rio_dev*, %union.rio_pw_msg.0*, i32)*, align 8
  %5 = alloca i32, align 4
  store %struct.rio_dev* %0, %struct.rio_dev** %3, align 8
  store i32 (%struct.rio_dev*, %union.rio_pw_msg.0*, i32)* %1, i32 (%struct.rio_dev*, %union.rio_pw_msg.0*, i32)** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @spin_lock(i32* @rio_global_list_lock)
  %7 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %7, i32 0, i32 0
  %9 = load i32 (%struct.rio_dev*, %union.rio_pw_msg*, i32)*, i32 (%struct.rio_dev*, %union.rio_pw_msg*, i32)** %8, align 8
  %10 = icmp ne i32 (%struct.rio_dev*, %union.rio_pw_msg*, i32)* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %5, align 4
  br label %19

14:                                               ; preds = %2
  %15 = load i32 (%struct.rio_dev*, %union.rio_pw_msg.0*, i32)*, i32 (%struct.rio_dev*, %union.rio_pw_msg.0*, i32)** %4, align 8
  %16 = bitcast i32 (%struct.rio_dev*, %union.rio_pw_msg.0*, i32)* %15 to i32 (%struct.rio_dev*, %union.rio_pw_msg*, i32)*
  %17 = load %struct.rio_dev*, %struct.rio_dev** %3, align 8
  %18 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %17, i32 0, i32 0
  store i32 (%struct.rio_dev*, %union.rio_pw_msg*, i32)* %16, i32 (%struct.rio_dev*, %union.rio_pw_msg*, i32)** %18, align 8
  br label %19

19:                                               ; preds = %14, %11
  %20 = call i32 @spin_unlock(i32* @rio_global_list_lock)
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
