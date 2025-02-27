; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_sysvbfs.c_sysvbfs_fstest_delfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_sysvbfs.c_sysvbfs_fstest_delfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysvbfstestargs = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysvbfs_fstest_delfs(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sysvbfstestargs*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sysvbfstestargs*
  store %struct.sysvbfstestargs* %9, %struct.sysvbfstestargs** %7, align 8
  %10 = load %struct.sysvbfstestargs*, %struct.sysvbfstestargs** %7, align 8
  %11 = getelementptr inbounds %struct.sysvbfstestargs, %struct.sysvbfstestargs* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @rump_pub_etfs_remove(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.sysvbfstestargs*, %struct.sysvbfstestargs** %7, align 8
  %20 = getelementptr inbounds %struct.sysvbfstestargs, %struct.sysvbfstestargs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @unlink(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %18
  %28 = load %struct.sysvbfstestargs*, %struct.sysvbfstestargs** %7, align 8
  %29 = call i32 @free(%struct.sysvbfstestargs* %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %25, %16
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @rump_pub_etfs_remove(i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @free(%struct.sysvbfstestargs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
