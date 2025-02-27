; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kallsyms.c_kallsyms_lookup_size_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kallsyms.c_kallsyms_lookup_size_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSYM_NAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kallsyms_lookup_size_offset(i64 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i32, i32* @KSYM_NAME_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @is_ksym_addr(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = call i32 @get_symbol_pos(i64 %19, i64* %20, i64* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %36

27:                                               ; preds = %3
  %28 = load i64, i64* %5, align 8
  %29 = load i64*, i64** %6, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = call i32 @module_address_lookup(i64 %28, i64* %29, i64* %30, i32* null, i8* %14)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %36

36:                                               ; preds = %27, %18
  %37 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %37)
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @is_ksym_addr(i64) #2

declare dso_local i32 @get_symbol_pos(i64, i64*, i64*) #2

declare dso_local i32 @module_address_lookup(i64, i64*, i64*, i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
