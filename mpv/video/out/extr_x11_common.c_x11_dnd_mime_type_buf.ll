; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_x11_dnd_mime_type_buf.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_x11_dnd_mime_type_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_x11_state = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"UTF8_STRING\00", align 1
@False = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.vo_x11_state*, i64, i8*, i64)* @x11_dnd_mime_type_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @x11_dnd_mime_type_buf(%struct.vo_x11_state* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vo_x11_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.vo_x11_state* %0, %struct.vo_x11_state** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.vo_x11_state*, %struct.vo_x11_state** %6, align 8
  %12 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @False, align 4
  %15 = call i64 @XInternAtom(i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = icmp eq i64 %10, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %24

18:                                               ; preds = %4
  %19 = load %struct.vo_x11_state*, %struct.vo_x11_state** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i8* @x11_atom_name_buf(%struct.vo_x11_state* %19, i64 %20, i8* %21, i64 %22)
  store i8* %23, i8** %5, align 8
  br label %24

24:                                               ; preds = %18, %17
  %25 = load i8*, i8** %5, align 8
  ret i8* %25
}

declare dso_local i64 @XInternAtom(i32, i8*, i32) #1

declare dso_local i8* @x11_atom_name_buf(%struct.vo_x11_state*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
