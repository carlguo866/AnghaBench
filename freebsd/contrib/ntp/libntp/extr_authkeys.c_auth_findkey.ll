; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_authkeys.c_auth_findkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_authkeys.c_auth_findkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.savekey = type { i64, %struct.savekey* }

@key_hash = common dso_local global %struct.savekey** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.savekey* @auth_findkey(i64 %0) #0 {
  %2 = alloca %struct.savekey*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.savekey*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.savekey**, %struct.savekey*** @key_hash, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @KEYHASH(i64 %6)
  %8 = getelementptr inbounds %struct.savekey*, %struct.savekey** %5, i64 %7
  %9 = load %struct.savekey*, %struct.savekey** %8, align 8
  store %struct.savekey* %9, %struct.savekey** %4, align 8
  br label %10

10:                                               ; preds = %22, %1
  %11 = load %struct.savekey*, %struct.savekey** %4, align 8
  %12 = icmp ne %struct.savekey* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.savekey*, %struct.savekey** %4, align 8
  %16 = getelementptr inbounds %struct.savekey, %struct.savekey* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.savekey*, %struct.savekey** %4, align 8
  store %struct.savekey* %20, %struct.savekey** %2, align 8
  br label %27

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.savekey*, %struct.savekey** %4, align 8
  %24 = getelementptr inbounds %struct.savekey, %struct.savekey* %23, i32 0, i32 1
  %25 = load %struct.savekey*, %struct.savekey** %24, align 8
  store %struct.savekey* %25, %struct.savekey** %4, align 8
  br label %10

26:                                               ; preds = %10
  store %struct.savekey* null, %struct.savekey** %2, align 8
  br label %27

27:                                               ; preds = %26, %19
  %28 = load %struct.savekey*, %struct.savekey** %2, align 8
  ret %struct.savekey* %28
}

declare dso_local i64 @KEYHASH(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
