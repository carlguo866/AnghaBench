; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agpioc_release_wrap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agpioc_release_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.agp_file_private = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@agp_fe = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agpioc_release_wrap(%struct.agp_file_private* %0) #0 {
  %2 = alloca %struct.agp_file_private*, align 8
  store %struct.agp_file_private* %0, %struct.agp_file_private** %2, align 8
  %3 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @agp_fe, i32 0, i32 0), align 4
  %5 = load %struct.agp_file_private*, %struct.agp_file_private** %2, align 8
  %6 = call i32 @agp_controller_release_current(i32 %4, %struct.agp_file_private* %5)
  ret i32 0
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @agp_controller_release_current(i32, %struct.agp_file_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
