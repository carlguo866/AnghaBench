; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_init.c_PE_get_offset_into_panic_region.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_init.c_PE_get_offset_into_panic_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@panic_info = common dso_local global i32* null, align 8
@panic_text_len = common dso_local global i32 0, align 4
@gPanicBase = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PE_get_offset_into_panic_region(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32*, i32** @panic_info, align 8
  %4 = icmp ne i32* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load i8*, i8** %2, align 8
  %8 = load i32*, i32** @panic_info, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = icmp ugt i8* %7, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i8*, i8** %2, align 8
  %14 = load i32*, i32** @panic_info, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = ptrtoint i8* %13 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @panic_text_len, align 4
  %21 = icmp ult i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i8*, i8** %2, align 8
  %25 = load i32, i32* @gPanicBase, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = ptrtoint i8* %28 to i32
  ret i32 %29
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
