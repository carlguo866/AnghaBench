; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ultra45_env.c_env_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ultra45_env.c_env_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env = type { i32, i64 }

@REG_ADDR = common dso_local global i64 0, align 8
@REG_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.env*, i32, i32)* @env_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @env_write(%struct.env* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.env*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.env* %0, %struct.env** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.env*, %struct.env** %4, align 8
  %8 = getelementptr inbounds %struct.env, %struct.env* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.env*, %struct.env** %4, align 8
  %12 = getelementptr inbounds %struct.env, %struct.env* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @REG_ADDR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writeb(i32 %10, i64 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.env*, %struct.env** %4, align 8
  %19 = getelementptr inbounds %struct.env, %struct.env* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REG_DATA, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writeb(i32 %17, i64 %22)
  %24 = load %struct.env*, %struct.env** %4, align 8
  %25 = getelementptr inbounds %struct.env, %struct.env* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
