; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_crash_dump.c_setup_kdump_elfcorehdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_crash_dump.c_setup_kdump_elfcorehdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OLDMEM_BASE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@elfcorehdr_addr = common dso_local global i64 0, align 8
@elfcorehdr_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @setup_kdump_elfcorehdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_kdump_elfcorehdr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @OLDMEM_BASE, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call i64 (...) @is_kdump_kernel()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %1, align 4
  br label %17

12:                                               ; preds = %6
  %13 = call i32 @s390_elf_corehdr_create(i8** %3, i64* %2)
  %14 = load i8*, i8** %3, align 8
  %15 = ptrtoint i8* %14 to i64
  store i64 %15, i64* @elfcorehdr_addr, align 8
  %16 = load i64, i64* %2, align 8
  store i64 %16, i64* @elfcorehdr_size, align 8
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %12, %9
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i64 @is_kdump_kernel(...) #1

declare dso_local i32 @s390_elf_corehdr_create(i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
