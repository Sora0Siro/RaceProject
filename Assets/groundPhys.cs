using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class groundPhys : MonoBehaviour
{
    public Mesh whatsMesh;
    // Start is called before the first frame update
    void Start()
    {
        GetComponent<MeshCollider>().sharedMesh = GetComponent<MeshFilter>().mesh;
        whatsMesh = GetComponent<MeshCollider>().sharedMesh;
    }
}
