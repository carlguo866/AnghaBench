; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_rq = type { i32 (%struct.nvm_rq*)*, %struct.nvm_tgt_dev* }
%struct.nvm_tgt_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvm_end_io(%struct.nvm_rq* %0) #0 {
  %2 = alloca %struct.nvm_rq*, align 8
  %3 = alloca %struct.nvm_tgt_dev*, align 8
  store %struct.nvm_rq* %0, %struct.nvm_rq** %2, align 8
  %4 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %5 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %4, i32 0, i32 1
  %6 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %5, align 8
  store %struct.nvm_tgt_dev* %6, %struct.nvm_tgt_dev** %3, align 8
  %7 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %3, align 8
  %8 = icmp ne %struct.nvm_tgt_dev* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %3, align 8
  %11 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %12 = call i32 @nvm_rq_dev_to_tgt(%struct.nvm_tgt_dev* %10, %struct.nvm_rq* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %15 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %14, i32 0, i32 0
  %16 = load i32 (%struct.nvm_rq*)*, i32 (%struct.nvm_rq*)** %15, align 8
  %17 = icmp ne i32 (%struct.nvm_rq*)* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %20 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %19, i32 0, i32 0
  %21 = load i32 (%struct.nvm_rq*)*, i32 (%struct.nvm_rq*)** %20, align 8
  %22 = load %struct.nvm_rq*, %struct.nvm_rq** %2, align 8
  %23 = call i32 %21(%struct.nvm_rq* %22)
  br label %24

24:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @nvm_rq_dev_to_tgt(%struct.nvm_tgt_dev*, %struct.nvm_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
