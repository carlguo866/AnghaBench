; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kallsyms.c_kallsyms_get_symbol_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kallsyms.c_kallsyms_get_symbol_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kallsyms_token_table = common dso_local global i8* null, align 8
@kallsyms_token_index = common dso_local global i64* null, align 8
@kallsyms_names = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32)* @kallsyms_get_symbol_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @kallsyms_get_symbol_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i8*, i8** @kallsyms_token_table, align 8
  %4 = load i64*, i64** @kallsyms_token_index, align 8
  %5 = load i64*, i64** @kallsyms_names, align 8
  %6 = load i32, i32* %2, align 4
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i64, i64* %5, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i64, i64* %4, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i8, i8* %3, i64 %12
  %14 = load i8, i8* %13, align 1
  ret i8 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
