; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_filt_userattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_filt_userattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i32* }

@NOTE_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*)* @filt_userattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_userattach(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %3 = load %struct.knote*, %struct.knote** %2, align 8
  %4 = getelementptr inbounds %struct.knote, %struct.knote* %3, i32 0, i32 2
  store i32* null, i32** %4, align 8
  %5 = load %struct.knote*, %struct.knote** %2, align 8
  %6 = getelementptr inbounds %struct.knote, %struct.knote* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @NOTE_TRIGGER, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.knote*, %struct.knote** %2, align 8
  %13 = getelementptr inbounds %struct.knote, %struct.knote* %12, i32 0, i32 1
  store i32 1, i32* %13, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.knote*, %struct.knote** %2, align 8
  %16 = getelementptr inbounds %struct.knote, %struct.knote* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %11
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
