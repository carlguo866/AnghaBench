; ModuleID = '/home/carl/AnghaBench/lede/package/boot/rbcfg/src/extr_main.c_rbcfg_env_set.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/rbcfg/src/extr_main.c_rbcfg_env_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbcfg_env = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbcfg_env*, i8*)* @rbcfg_env_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbcfg_env_set(%struct.rbcfg_env* %0, i8* %1) #0 {
  %3 = alloca %struct.rbcfg_env*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.rbcfg_env* %0, %struct.rbcfg_env** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.rbcfg_env*, %struct.rbcfg_env** %3, align 8
  %7 = getelementptr inbounds %struct.rbcfg_env, %struct.rbcfg_env* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %13 [
    i32 128, label %9
  ]

9:                                                ; preds = %2
  %10 = load %struct.rbcfg_env*, %struct.rbcfg_env** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @rbcfg_env_set_u32(%struct.rbcfg_env* %10, i8* %11)
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %2, %9
  %14 = load i32, i32* %5, align 4
  ret i32 %14
}

declare dso_local i32 @rbcfg_env_set_u32(%struct.rbcfg_env*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
