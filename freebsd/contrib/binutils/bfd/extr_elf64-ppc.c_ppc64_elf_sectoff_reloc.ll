; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_sectoff_reloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_sectoff_reloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@bfd_reloc_continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, %struct.TYPE_11__*, i8*, i32*, i32*, i8**)* @ppc64_elf_sectoff_reloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc64_elf_sectoff_reloc(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_11__* %2, i8* %3, i32* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  %16 = load i32*, i32** %14, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %7
  %19 = load i32*, i32** %9, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = load i8**, i8*** %15, align 8
  %26 = call i32 @bfd_elf_generic_reloc(i32* %19, %struct.TYPE_12__* %20, %struct.TYPE_11__* %21, i8* %22, i32* %23, i32* %24, i8** %25)
  store i32 %26, i32* %8, align 4
  br label %42

27:                                               ; preds = %7
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load i32, i32* @bfd_reloc_continue, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %27, %18
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @bfd_elf_generic_reloc(i32*, %struct.TYPE_12__*, %struct.TYPE_11__*, i8*, i32*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
