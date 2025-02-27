; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-gen.c_check_for_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-gen.c_check_for_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SEC_RELOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%B: Relocations in generic ELF (EM: %d)\00", align 1
@bfd_error_wrong_format = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i8*)* @check_for_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_relocs(i32* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SEC_RELOC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.TYPE_6__* @elf_elfheader(i32* %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %7, align 8
  %17 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @_bfd_error_handler(i32 %17, i32* %18, i32 %21)
  %23 = load i32, i32* @bfd_error_wrong_format, align 4
  %24 = call i32 @bfd_set_error(i32 %23)
  %25 = load i32, i32* @TRUE, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %14, %3
  ret void
}

declare dso_local %struct.TYPE_6__* @elf_elfheader(i32*) #1

declare dso_local i32 @_bfd_error_handler(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
