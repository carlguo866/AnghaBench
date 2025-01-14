; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_template_set_source_port.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_template_set_source_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TemplateSet = type { %struct.TemplatePacket* }
%struct.TemplatePacket = type { i8*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @template_set_source_port(%struct.TemplateSet* %0, i32 %1) #0 {
  %3 = alloca %struct.TemplateSet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TemplatePacket*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TemplateSet* %0, %struct.TemplateSet** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %45, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %48

12:                                               ; preds = %9
  %13 = load %struct.TemplateSet*, %struct.TemplateSet** %3, align 8
  %14 = getelementptr inbounds %struct.TemplateSet, %struct.TemplateSet* %13, i32 0, i32 0
  %15 = load %struct.TemplatePacket*, %struct.TemplatePacket** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %15, i64 %17
  store %struct.TemplatePacket* %18, %struct.TemplatePacket** %6, align 8
  %19 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %20 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %23 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %4, align 4
  %26 = lshr i32 %25, 8
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = add i32 %29, 0
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  store i8 %27, i8* %32, align 1
  %33 = load i32, i32* %4, align 4
  %34 = lshr i32 %33, 0
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, 1
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8 %35, i8* %40, align 1
  %41 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %42 = call i32 @tcp_checksum(%struct.TemplatePacket* %41)
  %43 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %44 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %12
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %9

48:                                               ; preds = %9
  ret void
}

declare dso_local i32 @tcp_checksum(%struct.TemplatePacket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
