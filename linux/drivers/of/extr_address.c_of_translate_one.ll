; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_address.c_of_translate_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_address.c_of_translate_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.of_bus = type { i64 (i32*, i32*, i32, i32, i32)*, i32 (i32*, i64, i32)* }

@OF_BAD_ADDR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"no ranges; cannot translate\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"empty ranges; 1:1 translation\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"walking ranges...\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"not found !\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"parent translation for:\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"with offset: %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.of_bus*, %struct.of_bus*, i32*, i32, i32, i32, i8*)* @of_translate_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_translate_one(%struct.device_node* %0, %struct.of_bus* %1, %struct.of_bus* %2, i32* %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.of_bus*, align 8
  %12 = alloca %struct.of_bus*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %10, align 8
  store %struct.of_bus* %1, %struct.of_bus** %11, align 8
  store %struct.of_bus* %2, %struct.of_bus** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %22 = load i64, i64* @OF_BAD_ADDR, align 8
  store i64 %22, i64* %21, align 8
  %23 = load %struct.device_node*, %struct.device_node** %10, align 8
  %24 = load i8*, i8** %17, align 8
  %25 = call i32* @of_get_property(%struct.device_node* %23, i8* %24, i32* %19)
  store i32* %25, i32** %18, align 8
  %26 = load i32*, i32** %18, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %8
  %29 = load %struct.device_node*, %struct.device_node** %10, align 8
  %30 = call i32 @of_empty_ranges_quirk(%struct.device_node* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %113

34:                                               ; preds = %28, %8
  %35 = load i32*, i32** %18, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %19, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37, %34
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i64 @of_read_number(i32* %41, i32 %42)
  store i64 %43, i64* %21, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load i32, i32* %16, align 4
  %46 = mul nsw i32 %45, 4
  %47 = call i32 @memset(i32* %44, i32 0, i32 %46)
  %48 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %100

49:                                               ; preds = %37
  %50 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* %19, align 4
  %52 = udiv i32 %51, 4
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %20, align 4
  br label %58

58:                                               ; preds = %77, %49
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %20, align 4
  %61 = icmp uge i32 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = load %struct.of_bus*, %struct.of_bus** %11, align 8
  %64 = getelementptr inbounds %struct.of_bus, %struct.of_bus* %63, i32 0, i32 0
  %65 = load i64 (i32*, i32*, i32, i32, i32)*, i64 (i32*, i32*, i32, i32, i32)** %64, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = load i32*, i32** %18, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %16, align 4
  %71 = call i64 %65(i32* %66, i32* %67, i32 %68, i32 %69, i32 %70)
  store i64 %71, i64* %21, align 8
  %72 = load i64, i64* %21, align 8
  %73 = load i64, i64* @OF_BAD_ADDR, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  br label %85

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* %19, align 4
  %80 = sub i32 %79, %78
  store i32 %80, i32* %19, align 4
  %81 = load i32, i32* %20, align 4
  %82 = load i32*, i32** %18, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %18, align 8
  br label %58

85:                                               ; preds = %75, %58
  %86 = load i64, i64* %21, align 8
  %87 = load i64, i64* @OF_BAD_ADDR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %113

91:                                               ; preds = %85
  %92 = load i32*, i32** %13, align 8
  %93 = load i32*, i32** %18, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %16, align 4
  %98 = mul nsw i32 4, %97
  %99 = call i32 @memcpy(i32* %92, i32* %96, i32 %98)
  br label %100

100:                                              ; preds = %91, %40
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @of_dump_addr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32* %101, i32 %102)
  %104 = load i64, i64* %21, align 8
  %105 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 %104)
  %106 = load %struct.of_bus*, %struct.of_bus** %12, align 8
  %107 = getelementptr inbounds %struct.of_bus, %struct.of_bus* %106, i32 0, i32 1
  %108 = load i32 (i32*, i64, i32)*, i32 (i32*, i64, i32)** %107, align 8
  %109 = load i32*, i32** %13, align 8
  %110 = load i64, i64* %21, align 8
  %111 = load i32, i32* %16, align 4
  %112 = call i32 %108(i32* %109, i64 %110, i32 %111)
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %100, %89, %32
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_empty_ranges_quirk(%struct.device_node*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @of_read_number(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @of_dump_addr(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
