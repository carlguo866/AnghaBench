; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c__fdrelse.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c__fdrelse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.filedesc* }
%struct.filedesc = type { i32, i32, i32*, i32** }

@UF_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc*, i32)* @_fdrelse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_fdrelse(%struct.proc* %0, i32 %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.filedesc*, align 8
  %6 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.proc*, %struct.proc** %3, align 8
  %8 = getelementptr inbounds %struct.proc, %struct.proc* %7, i32 0, i32 0
  %9 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  store %struct.filedesc* %9, %struct.filedesc** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %12 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %18 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.proc*, %struct.proc** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @procfdtbl_clearfd(%struct.proc* %20, i32 %21)
  br label %23

23:                                               ; preds = %51, %19
  %24 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %25 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %30 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %29, i32 0, i32 3
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %28
  %38 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %39 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @UF_RESERVED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %37, %28, %23
  %50 = phi i1 [ false, %28 ], [ false, %23 ], [ %48, %37 ]
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  %52 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %53 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  br label %23

56:                                               ; preds = %49
  ret void
}

declare dso_local i32 @procfdtbl_clearfd(%struct.proc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
