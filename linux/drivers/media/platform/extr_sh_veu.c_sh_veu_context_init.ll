; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_context_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_veu_dev = type { i64, i32 }

@sh_veu_queue_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_veu_dev*)* @sh_veu_context_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_veu_context_init(%struct.sh_veu_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_veu_dev*, align 8
  store %struct.sh_veu_dev* %0, %struct.sh_veu_dev** %3, align 8
  %4 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %5 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %11 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %14 = load i32, i32* @sh_veu_queue_init, align 4
  %15 = call i64 @v4l2_m2m_ctx_init(i32 %12, %struct.sh_veu_dev* %13, i32 %14)
  %16 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %17 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %3, align 8
  %19 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @PTR_ERR_OR_ZERO(i64 %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %9, %8
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @v4l2_m2m_ctx_init(i32, %struct.sh_veu_dev*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
