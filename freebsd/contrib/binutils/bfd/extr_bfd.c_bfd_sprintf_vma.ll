; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfd.c_bfd_sprintf_vma.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfd.c_bfd_sprintf_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, i8*, i32)* }

@bfd_target_elf_flavour = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfd_sprintf_vma(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @bfd_get_flavour(i32* %7)
  %9 = load i64, i64* @bfd_target_elf_flavour, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.TYPE_2__* @get_elf_backend_data(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %14, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 %15(i32* %16, i8* %17, i32 %18)
  br label %24

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @sprintf_vma(i8* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %11
  ret void
}

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local %struct.TYPE_2__* @get_elf_backend_data(i32*) #1

declare dso_local i32 @sprintf_vma(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
