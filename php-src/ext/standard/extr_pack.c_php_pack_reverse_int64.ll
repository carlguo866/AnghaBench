; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_pack.c_php_pack_reverse_int64.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_pack.c_php_pack_reverse_int64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.Swap64 = type { [2 x i8*] }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @php_pack_reverse_int64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_pack_reverse_int64(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.Swap64, align 8
  %4 = alloca %union.Swap64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = bitcast %union.Swap64* %3 to i32*
  store i32 %5, i32* %6, align 8
  %7 = bitcast %union.Swap64* %3 to [2 x i8*]*
  %8 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  %9 = load i8*, i8** %8, align 8
  %10 = call i8* @php_pack_reverse_int32(i8* %9)
  %11 = bitcast %union.Swap64* %4 to [2 x i8*]*
  %12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  store i8* %10, i8** %12, align 8
  %13 = bitcast %union.Swap64* %3 to [2 x i8*]*
  %14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i8* @php_pack_reverse_int32(i8* %15)
  %17 = bitcast %union.Swap64* %4 to [2 x i8*]*
  %18 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0, i64 1
  store i8* %16, i8** %18, align 8
  %19 = bitcast %union.Swap64* %4 to i32*
  %20 = load i32, i32* %19, align 8
  ret i32 %20
}

declare dso_local i8* @php_pack_reverse_int32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
