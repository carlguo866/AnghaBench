; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_nlattr.c_nla_memcmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_nlattr.c_nla_memcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nla_memcmp(%struct.nlattr* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %9 = call i64 @nla_len(%struct.nlattr* %8)
  %10 = load i64, i64* %6, align 8
  %11 = sub i64 %9, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %17 = call i32 @nla_data(%struct.nlattr* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @memcmp(i32 %17, i8* %18, i64 %19)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %15, %3
  %22 = load i32, i32* %7, align 4
  ret i32 %22
}

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @memcmp(i32, i8*, i64) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
