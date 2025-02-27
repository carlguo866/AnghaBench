; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_strm_rlimit_act.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_strm_rlimit_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.udma_rlimit_common }
%struct.udma_rlimit_common = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"udma [%s]: udma stream rate limit invalid action (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_m2s_strm_rlimit_act(%struct.al_udma* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_udma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.udma_rlimit_common*, align 8
  store %struct.al_udma* %0, %struct.al_udma** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %8 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.udma_rlimit_common* %12, %struct.udma_rlimit_common** %6, align 8
  %13 = load %struct.udma_rlimit_common*, %struct.udma_rlimit_common** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @al_udma_common_rlimit_act(%struct.udma_rlimit_common* %13, i32 %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %21 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @al_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %19
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @al_udma_common_rlimit_act(%struct.udma_rlimit_common*, i32) #1

declare dso_local i32 @al_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
