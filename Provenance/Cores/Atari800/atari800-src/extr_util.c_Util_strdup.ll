; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_util.c_Util_strdup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_util.c_Util_strdup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Util_strdup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @Util_malloc(i64 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @memcpy(i8* %12, i8* %13, i64 %14)
  %16 = load i8*, i8** %4, align 8
  ret i8* %16
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @Util_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
