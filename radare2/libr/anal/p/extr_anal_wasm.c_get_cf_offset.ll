; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_wasm.c_get_cf_offset.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_wasm.c_get_cf_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* (i32, i8*, i32)*, i32 }

@UT64_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"is~FUNC[2:%u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @get_cf_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cf_offset(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = call i32 @read_u32_leb128(i32* %12, i32* %17, i32* %8)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @UT64_MAX, align 4
  store i32 %21, i32* %4, align 4
  br label %45

22:                                               ; preds = %3
  %23 = call i32 (...) @r_cons_push()
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8* (i32, i8*, i32)*, i8* (i32, i8*, i32)** %26, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i8* %27(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = call i32 (...) @r_cons_pop()
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %22
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @r_num_get(i32* null, i8* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %45

43:                                               ; preds = %22
  %44 = load i32, i32* @UT64_MAX, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %37, %20
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @read_u32_leb128(i32*, i32*, i32*) #1

declare dso_local i32 @r_cons_push(...) #1

declare dso_local i32 @r_cons_pop(...) #1

declare dso_local i32 @r_num_get(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
