; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_io.c___reg_read.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/extr_debug_io.c___reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* (i32, i8*)*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"dr8\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"debug.io: Failed to get dr8 from io\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i8*, i32)* @__reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__reg_read(%struct.TYPE_5__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i8* (i32, i8*)*, i8* (i32, i8*)** %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i8* %17(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %4
  %26 = call i8* (...) @r_cons_get_buffer()
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i8*, i8** %11, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29, %25
  %34 = call i32 @eprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %74

35:                                               ; preds = %29
  %36 = load i8*, i8** %11, align 8
  %37 = call i8* @strdup(i8* %36)
  store i8* %37, i8** %10, align 8
  %38 = call i32 (...) @r_cons_reset()
  br label %39

39:                                               ; preds = %35, %4
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = call i8* @calloc(i32 1, i32 %41)
  store i8* %42, i8** %12, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @free(i8* %46)
  store i32 -1, i32* %5, align 4
  br label %74

48:                                               ; preds = %39
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @r_str_trim(i8* %49)
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 @r_hex_str2bin(i8* %51, i8* %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @R_MIN(i32 %59, i32 %60)
  %62 = call i32 @memcpy(i8* %57, i8* %58, i32 %61)
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %5, align 4
  br label %74

68:                                               ; preds = %48
  br label %69

69:                                               ; preds = %68
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @free(i8* %72)
  store i32 -1, i32* %5, align 4
  br label %74

74:                                               ; preds = %69, %56, %45, %33
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i8* @r_cons_get_buffer(...) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @r_cons_reset(...) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_str_trim(i8*) #1

declare dso_local i32 @r_hex_str2bin(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @R_MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
