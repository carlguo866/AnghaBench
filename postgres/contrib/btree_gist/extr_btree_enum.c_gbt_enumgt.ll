; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_enum.c_gbt_enumgt.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_enum.c_gbt_enumgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@enum_gt = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*)* @gbt_enumgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbt_enumgt(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @enum_gt, align 4
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* @InvalidOid, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ObjectIdGetDatum(i32 %12)
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ObjectIdGetDatum(i32 %16)
  %18 = call i32 @CallerFInfoFunctionCall2(i32 %7, i32* %8, i32 %9, i32 %13, i32 %17)
  %19 = call i32 @DatumGetBool(i32 %18)
  ret i32 %19
}

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i32 @CallerFInfoFunctionCall2(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
