; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_frontend.c___dvb_frontend_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_frontend.c___dvb_frontend_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.dvb_frontend_private* }
%struct.TYPE_2__ = type { i32 }
%struct.dvb_frontend_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @__dvb_frontend_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dvb_frontend_free(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dvb_frontend_private*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 1
  %6 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %5, align 8
  store %struct.dvb_frontend_private* %6, %struct.dvb_frontend_private** %3, align 8
  %7 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %3, align 8
  %8 = icmp ne %struct.dvb_frontend_private* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend_private, %struct.dvb_frontend_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dvb_free_device(i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dvb_frontend_invoke_release(%struct.dvb_frontend* %15, i32 %19)
  %21 = load %struct.dvb_frontend_private*, %struct.dvb_frontend_private** %3, align 8
  %22 = call i32 @kfree(%struct.dvb_frontend_private* %21)
  ret void
}

declare dso_local i32 @dvb_free_device(i32) #1

declare dso_local i32 @dvb_frontend_invoke_release(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @kfree(%struct.dvb_frontend_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
