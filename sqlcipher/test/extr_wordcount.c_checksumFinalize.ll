; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_wordcount.c_checksumFinalize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_wordcount.c_checksumFinalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @checksumFinalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checksumFinalize(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [24 x i8], align 16
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32* @sqlite3_aggregate_context(i32* %5, i32 0)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds [24 x i8], [24 x i8]* %4, i64 0, i64 0
  %12 = call i32 @finalHash(i32* %10, i8* %11)
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds [24 x i8], [24 x i8]* %4, i64 0, i64 0
  %15 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %16 = call i32 @sqlite3_result_text(i32* %13, i8* %14, i32 -1, i32 %15)
  br label %17

17:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32* @sqlite3_aggregate_context(i32*, i32) #1

declare dso_local i32 @finalHash(i32*, i8*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
