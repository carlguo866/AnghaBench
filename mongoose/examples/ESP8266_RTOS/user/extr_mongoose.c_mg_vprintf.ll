; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_vprintf.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_vprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }

@MG_VPRINTF_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_vprintf(%struct.mg_connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @MG_VPRINTF_BUFFER_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  store i8* %14, i8** %9, align 8
  %15 = trunc i64 %12 to i32
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @mg_avprintf(i8** %9, i32 %15, i8* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @mg_send(%struct.mg_connection* %21, i8* %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %3
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, %14
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @MG_FREE(i8* %32)
  br label %34

34:                                               ; preds = %31, %28, %25
  %35 = load i32, i32* %10, align 4
  %36 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %36)
  ret i32 %35
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mg_avprintf(i8**, i32, i8*, i32) #2

declare dso_local i32 @mg_send(%struct.mg_connection*, i8*, i32) #2

declare dso_local i32 @MG_FREE(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
