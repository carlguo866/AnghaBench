; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_ChangedPid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_ChangedPid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UU_LOCK_OK = common dso_local global i32 0, align 4
@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"uu_lock_txfr: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @physical_ChangedPid(%struct.physical* %0, i32 %1) #0 {
  %3 = alloca %struct.physical*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.physical*, %struct.physical** %3, align 8
  %7 = call i64 @physical_LockedDevice(%struct.physical* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.physical*, %struct.physical** %3, align 8
  %11 = getelementptr inbounds %struct.physical, %struct.physical* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ID0uu_lock_txfr(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @UU_LOCK_OK, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %9
  %19 = load i32, i32* @LogPHASE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @uu_lockerr(i32 %20)
  %22 = call i32 @log_Printf(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18, %9
  br label %24

24:                                               ; preds = %23, %2
  ret void
}

declare dso_local i64 @physical_LockedDevice(%struct.physical*) #1

declare dso_local i32 @ID0uu_lock_txfr(i32, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @uu_lockerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
