; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_c_name_of_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_c_name_of_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32 }
%struct.type = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"*%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.varobj*, i32)* @c_name_of_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @c_name_of_child(%struct.varobj* %0, i32 %1) #0 {
  %3 = alloca %struct.varobj*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.varobj* %0, %struct.varobj** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.varobj*, %struct.varobj** %3, align 8
  %10 = call %struct.type* @get_type(%struct.varobj* %9)
  store %struct.type* %10, %struct.type** %5, align 8
  %11 = load %struct.type*, %struct.type** %5, align 8
  %12 = call %struct.type* @get_target_type(%struct.type* %11)
  store %struct.type* %12, %struct.type** %6, align 8
  %13 = load %struct.type*, %struct.type** %5, align 8
  %14 = call i32 @TYPE_CODE(%struct.type* %13)
  switch i32 %14, label %43 [
    i32 131, label %15
    i32 129, label %18
    i32 128, label %18
    i32 130, label %26
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @xasprintf(i8** %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %45

18:                                               ; preds = %2, %2
  %19 = load %struct.type*, %struct.type** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i8* @TYPE_FIELD_NAME(%struct.type* %19, i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i8* @savestring(i8* %22, i32 %24)
  store i8* %25, i8** %7, align 8
  br label %45

26:                                               ; preds = %2
  %27 = load %struct.type*, %struct.type** %6, align 8
  %28 = call i32 @TYPE_CODE(%struct.type* %27)
  switch i32 %28, label %37 [
    i32 129, label %29
    i32 128, label %29
  ]

29:                                               ; preds = %26, %26
  %30 = load %struct.type*, %struct.type** %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i8* @TYPE_FIELD_NAME(%struct.type* %30, i32 %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = call i8* @savestring(i8* %33, i32 %35)
  store i8* %36, i8** %7, align 8
  br label %42

37:                                               ; preds = %26
  %38 = load %struct.varobj*, %struct.varobj** %3, align 8
  %39 = getelementptr inbounds %struct.varobj, %struct.varobj* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @xasprintf(i8** %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %37, %29
  br label %45

43:                                               ; preds = %2
  %44 = call i8* @xstrdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %44, i8** %7, align 8
  br label %45

45:                                               ; preds = %43, %42, %18, %15
  %46 = load i8*, i8** %7, align 8
  ret i8* %46
}

declare dso_local %struct.type* @get_type(%struct.varobj*) #1

declare dso_local %struct.type* @get_target_type(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @xasprintf(i8**, i8*, i32) #1

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i8* @savestring(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
