; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_get_reloc_upper_bound.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_get_reloc_upper_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@bfd_object = common dso_local global i64 0, align 8
@bfd_error_invalid_operation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @coff_get_reloc_upper_bound(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i64 @bfd_get_format(i32* %6)
  %8 = load i64, i64* @bfd_object, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @bfd_error_invalid_operation, align 4
  %12 = call i32 @bfd_set_error(i32 %11)
  store i64 -1, i64* %3, align 8
  br label %20

13:                                               ; preds = %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  store i64 %19, i64* %3, align 8
  br label %20

20:                                               ; preds = %13, %10
  %21 = load i64, i64* %3, align 8
  ret i64 %21
}

declare dso_local i64 @bfd_get_format(i32*) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
