; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_srcreg_ps_3.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_srcreg_ps_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm_parser = type { i32, i32 }
%struct.instruction = type { %struct.shader_reg* }
%struct.shader_reg = type { i32 }

@ps_3_reg_allowed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Line %u: Source register %s not supported in PS 3.0\0A\00", align 1
@PARSE_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asm_parser*, %struct.instruction*, i32, %struct.shader_reg*)* @asmparser_srcreg_ps_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asmparser_srcreg_ps_3(%struct.asm_parser* %0, %struct.instruction* %1, i32 %2, %struct.shader_reg* %3) #0 {
  %5 = alloca %struct.asm_parser*, align 8
  %6 = alloca %struct.instruction*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.shader_reg*, align 8
  store %struct.asm_parser* %0, %struct.asm_parser** %5, align 8
  store %struct.instruction* %1, %struct.instruction** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.shader_reg* %3, %struct.shader_reg** %8, align 8
  %9 = load %struct.shader_reg*, %struct.shader_reg** %8, align 8
  %10 = load i32, i32* @ps_3_reg_allowed, align 4
  %11 = call i32 @check_reg_type(%struct.shader_reg* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %4
  %14 = load %struct.asm_parser*, %struct.asm_parser** %5, align 8
  %15 = load %struct.asm_parser*, %struct.asm_parser** %5, align 8
  %16 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.shader_reg*, %struct.shader_reg** %8, align 8
  %19 = call i32 @debug_print_srcreg(%struct.shader_reg* %18)
  %20 = call i32 @asmparser_message(%struct.asm_parser* %14, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19)
  %21 = load %struct.asm_parser*, %struct.asm_parser** %5, align 8
  %22 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %21, i32 0, i32 0
  %23 = load i32, i32* @PARSE_ERR, align 4
  %24 = call i32 @set_parse_status(i32* %22, i32 %23)
  br label %25

25:                                               ; preds = %13, %4
  %26 = load %struct.asm_parser*, %struct.asm_parser** %5, align 8
  %27 = load %struct.shader_reg*, %struct.shader_reg** %8, align 8
  %28 = call i32 @check_loop_swizzle(%struct.asm_parser* %26, %struct.shader_reg* %27)
  %29 = load %struct.asm_parser*, %struct.asm_parser** %5, align 8
  %30 = load %struct.shader_reg*, %struct.shader_reg** %8, align 8
  %31 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @check_legacy_srcmod(%struct.asm_parser* %29, i32 %32)
  %34 = load %struct.instruction*, %struct.instruction** %6, align 8
  %35 = getelementptr inbounds %struct.instruction, %struct.instruction* %34, i32 0, i32 0
  %36 = load %struct.shader_reg*, %struct.shader_reg** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %36, i64 %38
  %40 = load %struct.shader_reg*, %struct.shader_reg** %8, align 8
  %41 = bitcast %struct.shader_reg* %39 to i8*
  %42 = bitcast %struct.shader_reg* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  ret void
}

declare dso_local i32 @check_reg_type(%struct.shader_reg*, i32) #1

declare dso_local i32 @asmparser_message(%struct.asm_parser*, i8*, i32, i32) #1

declare dso_local i32 @debug_print_srcreg(%struct.shader_reg*) #1

declare dso_local i32 @set_parse_status(i32*, i32) #1

declare dso_local i32 @check_loop_swizzle(%struct.asm_parser*, %struct.shader_reg*) #1

declare dso_local i32 @check_legacy_srcmod(%struct.asm_parser*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
