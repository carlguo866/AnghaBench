; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_timer_compat.c_snd_timer_user_ioctl_compat.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_timer_compat.c_snd_timer_user_ioctl_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.snd_timer_user* }
%struct.snd_timer_user = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @snd_timer_user_ioctl_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_timer_user_ioctl_compat(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.snd_timer_user*, align 8
  %8 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.snd_timer_user*, %struct.snd_timer_user** %10, align 8
  store %struct.snd_timer_user* %11, %struct.snd_timer_user** %7, align 8
  %12 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %13 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @__snd_timer_user_ioctl_compat(%struct.file* %15, i32 %16, i64 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %20 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load i64, i64* %8, align 8
  ret i64 %22
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__snd_timer_user_ioctl_compat(%struct.file*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
