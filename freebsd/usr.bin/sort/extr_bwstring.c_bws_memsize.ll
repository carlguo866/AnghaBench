; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bws_memsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bws_memsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i64 }

@MB_CUR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bws_memsize(%struct.bwstring* %0) #0 {
  %2 = alloca %struct.bwstring*, align 8
  store %struct.bwstring* %0, %struct.bwstring** %2, align 8
  %3 = load i32, i32* @MB_CUR_MAX, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %7 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %8, 2
  %10 = add i64 %9, 8
  br label %18

11:                                               ; preds = %1
  %12 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %13 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, 1
  %16 = call i64 @SIZEOF_WCHAR_STRING(i64 %15)
  %17 = add i64 %16, 8
  br label %18

18:                                               ; preds = %11, %5
  %19 = phi i64 [ %10, %5 ], [ %17, %11 ]
  ret i64 %19
}

declare dso_local i64 @SIZEOF_WCHAR_STRING(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
