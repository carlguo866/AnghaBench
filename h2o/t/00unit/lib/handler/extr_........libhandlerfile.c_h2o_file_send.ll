; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfile.c_h2o_file_send.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfile.c_h2o_file_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_sendfile_generator_t = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_file_send(i32* %0, i32 %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.st_h2o_sendfile_generator_t*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = load i32, i32* %13, align 4
  %21 = call %struct.st_h2o_sendfile_generator_t* @create_generator(i32* %16, i8* %17, i32 %19, i32* %15, i32 %20)
  store %struct.st_h2o_sendfile_generator_t* %21, %struct.st_h2o_sendfile_generator_t** %14, align 8
  %22 = icmp eq %struct.st_h2o_sendfile_generator_t* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %31

24:                                               ; preds = %6
  %25 = load %struct.st_h2o_sendfile_generator_t*, %struct.st_h2o_sendfile_generator_t** %14, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @do_send_file(%struct.st_h2o_sendfile_generator_t* %25, i32* %26, i32 %27, i8* %28, i32 %29, i32* null, i32 1)
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %24, %23
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local %struct.st_h2o_sendfile_generator_t* @create_generator(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @do_send_file(%struct.st_h2o_sendfile_generator_t*, i32*, i32, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
