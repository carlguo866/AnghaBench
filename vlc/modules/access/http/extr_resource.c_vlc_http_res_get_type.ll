; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_resource.c_vlc_http_res_get_type.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_resource.c_vlc_http_res_get_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_resource = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_http_res_get_type(%struct.vlc_http_resource* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vlc_http_resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.vlc_http_resource* %0, %struct.vlc_http_resource** %3, align 8
  %6 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %7 = call i32 @vlc_http_res_get_status(%struct.vlc_http_resource* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 200
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 300
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %1
  store i8* null, i8** %2, align 8
  br label %27

14:                                               ; preds = %10
  %15 = load %struct.vlc_http_resource*, %struct.vlc_http_resource** %3, align 8
  %16 = getelementptr inbounds %struct.vlc_http_resource, %struct.vlc_http_resource* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @vlc_http_msg_get_header(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @strdup(i8* %22)
  br label %25

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i8* [ %23, %21 ], [ null, %24 ]
  store i8* %26, i8** %2, align 8
  br label %27

27:                                               ; preds = %25, %13
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

declare dso_local i32 @vlc_http_res_get_status(%struct.vlc_http_resource*) #1

declare dso_local i8* @vlc_http_msg_get_header(i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
