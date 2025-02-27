; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_avc_luma_hv_qrt_and_aver_dst_4x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_avc_luma_hv_qrt_and_aver_dst_4x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@luma_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @avc_luma_hv_qrt_and_aver_dst_4x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_luma_hv_qrt_and_aver_dst_4x4_msa(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__, align 4
  %17 = alloca %struct.TYPE_8__, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca %struct.TYPE_8__, align 4
  %48 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 64257, i32* %13, align 4
  store i32 5140, i32* %14, align 4
  store i32 507, i32* %15, align 4
  %49 = bitcast %struct.TYPE_8__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %49, i8 0, i64 4, i1 false)
  %50 = call i64 @__msa_fill_h(i32 64257)
  store i64 %50, i64* %38, align 8
  %51 = call i64 @__msa_fill_h(i32 5140)
  store i64 %51, i64* %39, align 8
  %52 = call i64 @__msa_fill_h(i32 507)
  store i64 %52, i64* %40, align 8
  %53 = load i32*, i32** @luma_mask_arr, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 48
  %55 = load i64, i64* %35, align 8
  %56 = load i64, i64* %36, align 8
  %57 = load i64, i64* %37, align 8
  %58 = call i32 @LD_SB3(i32* %54, i32 16, i64 %55, i64 %56, i64 %57)
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i64, i64* %24, align 8
  %62 = load i64, i64* %25, align 8
  %63 = load i64, i64* %26, align 8
  %64 = load i64, i64* %27, align 8
  %65 = load i64, i64* %28, align 8
  %66 = call i32 @LD_SB5(i32* %59, i32 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65)
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 5, %67
  %69 = load i32*, i32** %6, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %6, align 8
  %72 = load i64, i64* %24, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i64, i64* %25, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i64 @__msa_insve_w(i32 %73, i32 1, i32 %75)
  store i64 %76, i64* %24, align 8
  %77 = load i64, i64* %25, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i64, i64* %26, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i64 @__msa_insve_w(i32 %78, i32 1, i32 %80)
  store i64 %81, i64* %25, align 8
  %82 = load i64, i64* %26, align 8
  %83 = trunc i64 %82 to i32
  %84 = load i64, i64* %27, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i64 @__msa_insve_w(i32 %83, i32 1, i32 %85)
  store i64 %86, i64* %26, align 8
  %87 = load i64, i64* %27, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i64, i64* %28, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i64 @__msa_insve_w(i32 %88, i32 1, i32 %90)
  store i64 %91, i64* %27, align 8
  %92 = load i64, i64* %24, align 8
  %93 = load i64, i64* %25, align 8
  %94 = load i64, i64* %26, align 8
  %95 = load i64, i64* %27, align 8
  %96 = call i32 @XORI_B4_128_SB(i64 %92, i64 %93, i64 %94, i64 %95)
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i64, i64* %18, align 8
  %100 = load i64, i64* %19, align 8
  %101 = load i64, i64* %20, align 8
  %102 = load i64, i64* %21, align 8
  %103 = call i32 @LD_SB4(i32* %97, i32 %98, i64 %99, i64 %100, i64 %101, i64 %102)
  %104 = load i64, i64* %18, align 8
  %105 = load i64, i64* %19, align 8
  %106 = load i64, i64* %20, align 8
  %107 = load i64, i64* %21, align 8
  %108 = call i32 @XORI_B4_128_SB(i64 %104, i64 %105, i64 %106, i64 %107)
  %109 = load i64, i64* %18, align 8
  %110 = load i64, i64* %19, align 8
  %111 = load i64, i64* %35, align 8
  %112 = load i64, i64* %36, align 8
  %113 = load i64, i64* %37, align 8
  %114 = call i64 @AVC_HORZ_FILTER_SH(i64 %109, i64 %110, i64 %111, i64 %112, i64 %113)
  store i64 %114, i64* %41, align 8
  %115 = load i64, i64* %20, align 8
  %116 = load i64, i64* %21, align 8
  %117 = load i64, i64* %35, align 8
  %118 = load i64, i64* %36, align 8
  %119 = load i64, i64* %37, align 8
  %120 = call i64 @AVC_HORZ_FILTER_SH(i64 %115, i64 %116, i64 %117, i64 %118, i64 %119)
  store i64 %120, i64* %42, align 8
  %121 = load i64, i64* %41, align 8
  %122 = load i64, i64* %42, align 8
  %123 = call i32 @SRARI_H2_SH(i64 %121, i64 %122, i32 5)
  %124 = load i64, i64* %41, align 8
  %125 = load i64, i64* %42, align 8
  %126 = call i32 @SAT_SH2_SH(i64 %124, i64 %125, i32 7)
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i64, i64* %29, align 8
  %130 = load i64, i64* %30, align 8
  %131 = load i64, i64* %22, align 8
  %132 = load i64, i64* %23, align 8
  %133 = call i32 @LD_SB4(i32* %127, i32 %128, i64 %129, i64 %130, i64 %131, i64 %132)
  %134 = load i64, i64* %28, align 8
  %135 = trunc i64 %134 to i32
  %136 = load i64, i64* %29, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i64 @__msa_insve_w(i32 %135, i32 1, i32 %137)
  store i64 %138, i64* %28, align 8
  %139 = load i64, i64* %29, align 8
  %140 = trunc i64 %139 to i32
  %141 = load i64, i64* %30, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i64 @__msa_insve_w(i32 %140, i32 1, i32 %142)
  store i64 %143, i64* %29, align 8
  %144 = load i64, i64* %30, align 8
  %145 = trunc i64 %144 to i32
  %146 = load i64, i64* %22, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i64 @__msa_insve_w(i32 %145, i32 1, i32 %147)
  store i64 %148, i64* %30, align 8
  %149 = load i64, i64* %22, align 8
  %150 = trunc i64 %149 to i32
  %151 = load i64, i64* %23, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i64 @__msa_insve_w(i32 %150, i32 1, i32 %152)
  store i64 %153, i64* %22, align 8
  %154 = load i64, i64* %28, align 8
  %155 = load i64, i64* %29, align 8
  %156 = load i64, i64* %30, align 8
  %157 = load i64, i64* %22, align 8
  %158 = call i32 @XORI_B4_128_SB(i64 %154, i64 %155, i64 %156, i64 %157)
  %159 = load i64, i64* %25, align 8
  %160 = load i64, i64* %24, align 8
  %161 = load i64, i64* %27, align 8
  %162 = load i64, i64* %26, align 8
  %163 = load i64, i64* %31, align 8
  %164 = load i64, i64* %32, align 8
  %165 = call i32 @ILVR_B2_SB(i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164)
  %166 = load i64, i64* %29, align 8
  %167 = load i64, i64* %28, align 8
  %168 = load i64, i64* %22, align 8
  %169 = load i64, i64* %30, align 8
  %170 = load i64, i64* %33, align 8
  %171 = load i64, i64* %34, align 8
  %172 = call i32 @ILVR_B2_SB(i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171)
  %173 = load i64, i64* %31, align 8
  %174 = load i64, i64* %32, align 8
  %175 = load i64, i64* %33, align 8
  %176 = load i64, i64* %38, align 8
  %177 = load i64, i64* %39, align 8
  %178 = load i64, i64* %40, align 8
  %179 = call i64 @AVC_DOT_SH3_SH(i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178)
  store i64 %179, i64* %43, align 8
  %180 = load i64, i64* %32, align 8
  %181 = load i64, i64* %33, align 8
  %182 = load i64, i64* %34, align 8
  %183 = load i64, i64* %38, align 8
  %184 = load i64, i64* %39, align 8
  %185 = load i64, i64* %40, align 8
  %186 = call i64 @AVC_DOT_SH3_SH(i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185)
  store i64 %186, i64* %44, align 8
  %187 = load i64, i64* %43, align 8
  %188 = load i64, i64* %44, align 8
  %189 = call i32 @SRARI_H2_SH(i64 %187, i64 %188, i32 5)
  %190 = load i64, i64* %43, align 8
  %191 = load i64, i64* %44, align 8
  %192 = call i32 @SAT_SH2_SH(i64 %190, i64 %191, i32 7)
  %193 = load i32*, i32** %7, align 8
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* %12, align 4
  %199 = call i32 @LW4(i32* %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198)
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %12, align 4
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @INSERT_W4_UB(i32 %200, i32 %201, i32 %202, i32 %203, i32 %205)
  %207 = load i64, i64* %42, align 8
  %208 = load i64, i64* %44, align 8
  %209 = add nsw i64 %207, %208
  %210 = call i64 @__msa_srari_h(i64 %209, i32 1)
  store i64 %210, i64* %46, align 8
  %211 = load i64, i64* %41, align 8
  %212 = load i64, i64* %43, align 8
  %213 = add nsw i64 %211, %212
  %214 = call i64 @__msa_srari_h(i64 %213, i32 1)
  store i64 %214, i64* %45, align 8
  %215 = load i64, i64* %45, align 8
  %216 = load i64, i64* %46, align 8
  %217 = call i32 @SAT_SH2_SH(i64 %215, i64 %216, i32 7)
  %218 = load i64, i64* %45, align 8
  %219 = load i64, i64* %46, align 8
  %220 = call i32 @PCKEV_XORI128_UB(i64 %218, i64 %219)
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 %220, i32* %221, align 4
  %222 = bitcast %struct.TYPE_8__* %16 to i8*
  %223 = bitcast %struct.TYPE_8__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %222, i8* align 4 %223, i64 4, i1 false)
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @__msa_aver_u_b(i32 %225, i32 %227)
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 %228, i32* %229, align 4
  %230 = bitcast %struct.TYPE_8__* %17 to i8*
  %231 = bitcast %struct.TYPE_8__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %230, i8* align 4 %231, i64 4, i1 false)
  %232 = load i32*, i32** %7, align 8
  %233 = load i32, i32* %8, align 4
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @ST_W4(i32 %235, i32 0, i32 1, i32 2, i32 3, i32* %232, i32 %233)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @__msa_fill_h(i32) #2

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #2

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #2

declare dso_local i64 @__msa_insve_w(i32, i32, i32) #2

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #2

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #2

declare dso_local i64 @AVC_HORZ_FILTER_SH(i64, i64, i64, i64, i64) #2

declare dso_local i32 @SRARI_H2_SH(i64, i64, i32) #2

declare dso_local i32 @SAT_SH2_SH(i64, i64, i32) #2

declare dso_local i32 @ILVR_B2_SB(i64, i64, i64, i64, i64, i64) #2

declare dso_local i64 @AVC_DOT_SH3_SH(i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @LW4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @INSERT_W4_UB(i32, i32, i32, i32, i32) #2

declare dso_local i64 @__msa_srari_h(i64, i32) #2

declare dso_local i32 @PCKEV_XORI128_UB(i64, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @__msa_aver_u_b(i32, i32) #2

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
